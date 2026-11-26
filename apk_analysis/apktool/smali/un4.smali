.class public final synthetic Lun4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lun4;->b:I

    iput p2, p0, Lun4;->c:I

    iput-object p3, p0, Lun4;->d:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lun4;->c:I

    iget-object v1, p0, Lun4;->d:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    iget p0, p0, Lun4;->b:I

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->c(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p0

    return-object p0
.end method
