.class public final synthetic Lwm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/SelectionManager;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

.field public final synthetic d:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwm7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    iput-object p3, p0, Lwm7;->c:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    iput-object p1, p0, Lwm7;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lwm7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    iget-object v1, p0, Lwm7;->c:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    iget-object p0, p0, Lwm7;->d:Lbm3;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->k(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;Lbm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
