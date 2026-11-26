.class public final synthetic Lpn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn4;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Lpn4;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lpn4;->c:I

    check-cast p1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    iget-object p0, p0, Lpn4;->b:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->d(Landroidx/compose/foundation/lazy/LazyListState;ILandroidx/compose/foundation/lazy/layout/NestedPrefetchScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
