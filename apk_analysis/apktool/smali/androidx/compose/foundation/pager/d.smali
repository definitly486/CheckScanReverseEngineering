.class public final synthetic Landroidx/compose/foundation/pager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerCacheWindowScope;


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/d;->b:Lbm3;

    iput-object p2, p0, Landroidx/compose/foundation/pager/d;->c:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/pager/d;->c:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    iget-object p0, p0, Landroidx/compose/foundation/pager/d;->b:Lbm3;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->a(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
