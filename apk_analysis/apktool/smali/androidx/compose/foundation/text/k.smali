.class public final synthetic Landroidx/compose/foundation/text/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/k;->b:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/text/k;->c:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/k;->c:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/foundation/text/k;->b:Ljava/util/List;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->a(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
