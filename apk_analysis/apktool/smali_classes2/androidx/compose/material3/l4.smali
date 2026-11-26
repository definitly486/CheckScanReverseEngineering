.class public final synthetic Landroidx/compose/material3/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lp07;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lp07;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/l4;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/compose/material3/l4;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/compose/material3/l4;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/compose/material3/l4;->e:Lp07;

    iput p5, p0, Landroidx/compose/material3/l4;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v4, p0, Landroidx/compose/material3/l4;->f:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/l4;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/material3/l4;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/material3/l4;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/compose/material3/l4;->e:Lp07;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lp07;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
