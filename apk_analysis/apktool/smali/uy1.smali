.class public final synthetic Luy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lll3;Landroidx/compose/ui/Modifier;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy1;->b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iput-object p2, p0, Luy1;->c:Lll3;

    iput-object p3, p0, Luy1;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Luy1;->e:Lnl3;

    iput p5, p0, Luy1;->f:I

    iput p6, p0, Luy1;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Luy1;->b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iget-object v1, p0, Luy1;->c:Lll3;

    iget-object v2, p0, Luy1;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Luy1;->e:Lnl3;

    iget v4, p0, Luy1;->f:I

    iget v5, p0, Luy1;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt;->b(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lll3;Landroidx/compose/ui/Modifier;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
