.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

.field public final synthetic c:Landroid/graphics/drawable/Icon;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;Landroid/graphics/drawable/Icon;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->b:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->c:Landroid/graphics/drawable/Icon;

    iput p3, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->b:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    iget-object v1, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->c:Landroid/graphics/drawable/Icon;

    iget p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->d(Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;Landroid/graphics/drawable/Icon;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
