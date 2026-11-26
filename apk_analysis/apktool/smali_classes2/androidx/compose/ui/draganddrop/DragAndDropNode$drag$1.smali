.class final Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draganddrop/DragAndDropNode;->drag-12SF9DM(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLnl3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $decorationSize:J

.field final synthetic $drawDragDecoration:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transferData:Landroidx/compose/ui/draganddrop/DragAndDropTransferData;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
            "J",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$transferData:Landroidx/compose/ui/draganddrop/DragAndDropTransferData;

    iput-wide p2, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$decorationSize:J

    iput-object p4, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$drawDragDecoration:Lnl3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->invoke-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;J)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;J)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$transferData:Landroidx/compose/ui/draganddrop/DragAndDropTransferData;

    iget-wide v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$decorationSize:J

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$drag$1;->$drawDragDecoration:Lnl3;

    invoke-interface {p1, p2, v0, v1, p0}, Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;->startDragAndDropTransfer-12SF9DM(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLnl3;)Z

    return-void
.end method
