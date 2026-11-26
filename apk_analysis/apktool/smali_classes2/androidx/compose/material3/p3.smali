.class public final synthetic Landroidx/compose/material3/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/p3;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/compose/material3/p3;->c:Ljava/util/ArrayList;

    iput p3, p0, Landroidx/compose/material3/p3;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/material3/p3;->d:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/material3/p3;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/compose/material3/p3;->c:Ljava/util/ArrayList;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SearchBarKt$DockedSearchBarLayout$2$2$1;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
