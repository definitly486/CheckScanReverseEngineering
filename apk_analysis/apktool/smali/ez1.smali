.class public final synthetic Lez1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Ldm3;

.field public final synthetic g:Lll3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Ldm3;Lll3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez1;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lez1;->c:Z

    iput-object p3, p0, Lez1;->d:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iput-object p4, p0, Lez1;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lez1;->f:Ldm3;

    iput-object p6, p0, Lez1;->g:Lll3;

    iput p7, p0, Lez1;->h:I

    iput p8, p0, Lez1;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lez1;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lez1;->c:Z

    iget-object v2, p0, Lez1;->d:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iget-object v3, p0, Lez1;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lez1;->f:Ldm3;

    iget-object v5, p0, Lez1;->g:Lll3;

    iget v6, p0, Lez1;->h:I

    iget v7, p0, Lez1;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->h(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Ldm3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
