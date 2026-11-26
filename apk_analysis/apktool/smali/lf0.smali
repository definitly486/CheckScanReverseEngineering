.class public final synthetic Llf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

.field public final synthetic c:Lll3;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;Lll3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf0;->b:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    iput-object p2, p0, Llf0;->c:Lll3;

    iput p3, p0, Llf0;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Llf0;->b:Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    iget-object v1, p0, Llf0;->c:Lll3;

    iget p0, p0, Llf0;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;->a(Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;Lll3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
