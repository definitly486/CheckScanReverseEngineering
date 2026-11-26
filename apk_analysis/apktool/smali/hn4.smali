.class public final synthetic Lhn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn4;->b:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lhn4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lhn4;->d:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhn4;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, p0, Lhn4;->d:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iget-object p0, p0, Lhn4;->b:Landroidx/compose/runtime/State;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->b(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    move-result-object p0

    return-object p0
.end method
