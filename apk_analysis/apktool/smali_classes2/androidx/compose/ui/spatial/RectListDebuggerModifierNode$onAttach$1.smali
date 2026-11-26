.class final Landroidx/compose/ui/spatial/RectListDebuggerModifierNode$onAttach$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;->onAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode$onAttach$1;->this$0:Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode$onAttach$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode$onAttach$1;->this$0:Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
