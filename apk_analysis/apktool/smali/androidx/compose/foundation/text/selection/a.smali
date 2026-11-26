.class public final synthetic Landroidx/compose/foundation/text/selection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

.field public final synthetic c:Landroidx/collection/MutableLongObjectMap;

.field public final synthetic d:Landroidx/compose/foundation/text/selection/Selection;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/a;->b:Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/a;->c:Landroidx/collection/MutableLongObjectMap;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/a;->d:Landroidx/compose/foundation/text/selection/Selection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/a;->d:Landroidx/compose/foundation/text/selection/Selection;

    check-cast p1, Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/a;->b:Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/a;->c:Landroidx/collection/MutableLongObjectMap;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->a(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
