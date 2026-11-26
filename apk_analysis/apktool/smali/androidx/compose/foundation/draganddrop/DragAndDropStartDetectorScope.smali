.class public interface abstract Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputScope;


# direct methods
.method public static synthetic requestDragAndDropTransfer-k-4lQ0M$default(Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;->requestDragAndDropTransfer-k-4lQ0M(J)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: requestDragAndDropTransfer-k-4lQ0M"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract requestDragAndDropTransfer-k-4lQ0M(J)V
.end method
