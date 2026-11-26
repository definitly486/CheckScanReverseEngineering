.class final Landroidx/compose/ui/draw/BlockDropShadowNode$obtainPainter$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/BlockDropShadowNode;->obtainPainter()Landroidx/compose/ui/graphics/shadow/DropShadowPainter;
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
.field final synthetic this$0:Landroidx/compose/ui/draw/BlockDropShadowNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/draw/BlockDropShadowNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/BlockDropShadowNode$obtainPainter$1;->this$0:Landroidx/compose/ui/draw/BlockDropShadowNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/draw/BlockDropShadowNode$obtainPainter$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlockDropShadowNode$obtainPainter$1;->this$0:Landroidx/compose/ui/draw/BlockDropShadowNode;

    invoke-static {v0}, Landroidx/compose/ui/draw/BlockDropShadowNode;->access$getBlock$p(Landroidx/compose/ui/draw/BlockDropShadowNode;)Lnl3;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowNode$obtainPainter$1;->this$0:Landroidx/compose/ui/draw/BlockDropShadowNode;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
