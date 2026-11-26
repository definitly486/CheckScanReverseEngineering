.class public final synthetic Landroidx/compose/material3/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Ldm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/n4;->b:Lbm3;

    iput-object p2, p0, Landroidx/compose/material3/n4;->c:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/n4;->d:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Landroidx/compose/material3/n4;->b:Lbm3;

    iget-object v1, p0, Landroidx/compose/material3/n4;->c:Lbm3;

    iget-object p0, p0, Landroidx/compose/material3/n4;->d:Ldm3;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;->b(Lbm3;Lbm3;Ldm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
