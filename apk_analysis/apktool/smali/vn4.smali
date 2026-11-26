.class public final synthetic Lvn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iput p2, p0, Lvn4;->c:I

    iput p3, p0, Lvn4;->d:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvn4;->c:I

    iget v1, p0, Lvn4;->d:I

    iget-object p0, p0, Lvn4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->b(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p0

    return-object p0
.end method
