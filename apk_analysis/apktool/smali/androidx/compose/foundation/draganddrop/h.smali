.class public final synthetic Landroidx/compose/foundation/draganddrop/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/h;->b:Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/h;->b:Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;->a(Landroidx/compose/foundation/draganddrop/DragSourceNodeWithDefaultPainter;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
