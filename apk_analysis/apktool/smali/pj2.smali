.class public final synthetic Lpj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

.field public final synthetic c:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj2;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    iput-object p2, p0, Lpj2;->c:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    iput p3, p0, Lpj2;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lpj2;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    iget-object v1, p0, Lpj2;->c:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    iget p0, p0, Lpj2;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->b(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
