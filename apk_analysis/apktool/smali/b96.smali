.class public final synthetic Lb96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

.field public final synthetic f:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lbm3;Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb96;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lb96;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lb96;->d:Lbm3;

    iput-object p4, p0, Lb96;->e:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    iput-object p5, p0, Lb96;->f:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lb96;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lb96;->c:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lb96;->d:Lbm3;

    iget-object v3, p0, Lb96;->e:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    iget-object v4, p0, Lb96;->f:Lll3;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/contextmenu/internal/PlatformDefaultTextContextMenuProviders_androidKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lbm3;Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;Lll3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
