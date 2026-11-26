.class public final synthetic Lxy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Ldm3;

.field public final synthetic g:Lll3;


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/ui/Modifier;ZLdm3;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxy1;->b:Lbm3;

    iput-object p2, p0, Lxy1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iput-object p3, p0, Lxy1;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lxy1;->e:Z

    iput-object p5, p0, Lxy1;->f:Ldm3;

    iput-object p6, p0, Lxy1;->g:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lxy1;->b:Lbm3;

    iget-object v1, p0, Lxy1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iget-object v2, p0, Lxy1;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lxy1;->e:Z

    iget-object v4, p0, Lxy1;->f:Ldm3;

    iget-object v5, p0, Lxy1;->g:Lll3;

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->a(Lbm3;Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/ui/Modifier;ZLdm3;Lll3;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
