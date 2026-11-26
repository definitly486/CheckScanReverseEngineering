.class public final synthetic Lkn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn4;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lkn4;->c:Ljava/util/List;

    iput-object p3, p0, Lkn4;->d:Ljava/util/List;

    iput-boolean p4, p0, Lkn4;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lkn4;->e:Z

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Lkn4;->b:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lkn4;->c:Ljava/util/List;

    iget-object p0, p0, Lkn4;->d:Ljava/util/List;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->d(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
