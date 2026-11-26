.class public final synthetic Landroidx/compose/foundation/draganddrop/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/b;->b:Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/b;->b:Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults$DefaultStartDetector$1$1$1;->m(Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
