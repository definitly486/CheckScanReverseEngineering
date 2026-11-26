.class public final synthetic Lzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lll3;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILll3;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lzj;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lzj;->c:Lll3;

    iput-boolean p4, p0, Lzj;->d:Z

    iput p1, p0, Lzj;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lzj;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lzj;->c:Lll3;

    iget-boolean v2, p0, Lzj;->d:Z

    iget v3, p0, Lzj;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->d(Landroidx/compose/ui/Modifier;Lll3;ZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
