.class public final synthetic Lym4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lym4;->b:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lym4;->c:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lym4;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lym4;->c:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lym4;->d:Lll3;

    iget-object p0, p0, Lym4;->b:Landroidx/compose/runtime/State;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->e(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lll3;)Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    move-result-object p0

    return-object p0
.end method
