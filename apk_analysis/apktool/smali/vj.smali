.class public final synthetic Lvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/OffsetProvider;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iput-boolean p2, p0, Lvj;->c:Z

    iput-boolean p3, p0, Lvj;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lvj;->d:Z

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v1, p0, Lvj;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iget-boolean p0, p0, Lvj;->c:Z

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->h(Landroidx/compose/foundation/text/selection/OffsetProvider;ZZLandroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
