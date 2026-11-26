.class public final synthetic Lvj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj2;->b:Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    iput-object p2, p0, Lvj2;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvj2;->b:Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    iget-object p0, p0, Lvj2;->c:Lll3;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->e(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lll3;)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method
