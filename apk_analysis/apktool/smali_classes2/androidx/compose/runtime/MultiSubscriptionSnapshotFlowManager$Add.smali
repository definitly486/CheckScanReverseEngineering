.class final Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Add"
.end annotation


# instance fields
.field private final channel:Lno7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno7<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lno7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lno7<",
            "-",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->obj:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->channel:Lno7;

    return-void
.end method


# virtual methods
.method public final getChannel()Lno7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lno7<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->channel:Lno7;

    return-object p0
.end method

.method public final getObj()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->obj:Ljava/lang/Object;

    return-object p0
.end method
