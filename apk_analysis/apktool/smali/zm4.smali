.class public final synthetic Lzm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzm4;->b:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lzm4;->c:Landroidx/compose/foundation/pager/PagerState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzm4;->b:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lzm4;->c:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v0, p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->d(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    move-result-object p0

    return-object p0
.end method
