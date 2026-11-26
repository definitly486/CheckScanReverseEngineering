.class public final synthetic Lsy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

.field public final synthetic c:Lll3;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Lll3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lll3;Lnl3;Landroidx/compose/ui/Modifier;ZLll3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy1;->b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iput-object p2, p0, Lsy1;->c:Lll3;

    iput-object p3, p0, Lsy1;->d:Lnl3;

    iput-object p4, p0, Lsy1;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lsy1;->f:Z

    iput-object p6, p0, Lsy1;->g:Lll3;

    iput-object p7, p0, Lsy1;->h:Lbm3;

    iput p8, p0, Lsy1;->i:I

    iput p9, p0, Lsy1;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lsy1;->b:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iget-object v1, p0, Lsy1;->c:Lll3;

    iget-object v2, p0, Lsy1;->d:Lnl3;

    iget-object v3, p0, Lsy1;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lsy1;->f:Z

    iget-object v5, p0, Lsy1;->g:Lll3;

    iget-object v6, p0, Lsy1;->h:Lbm3;

    iget v7, p0, Lsy1;->i:I

    iget v8, p0, Lsy1;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt;->e(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lll3;Lnl3;Landroidx/compose/ui/Modifier;ZLll3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
