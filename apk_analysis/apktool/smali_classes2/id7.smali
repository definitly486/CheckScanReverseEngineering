.class public final synthetic Lid7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I

.field public final synthetic g:Lbm3;

.field public final synthetic h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

.field public final synthetic i:Lbm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid7;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Lid7;->c:Lbm3;

    iput-object p3, p0, Lid7;->d:Lbm3;

    iput-object p4, p0, Lid7;->e:Lbm3;

    iput p5, p0, Lid7;->f:I

    iput-object p6, p0, Lid7;->g:Lbm3;

    iput-object p7, p0, Lid7;->h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    iput-object p8, p0, Lid7;->i:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object v9, p2

    check-cast v9, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lid7;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v1, p0, Lid7;->c:Lbm3;

    iget-object v2, p0, Lid7;->d:Lbm3;

    iget-object v3, p0, Lid7;->e:Lbm3;

    iget v4, p0, Lid7;->f:I

    iget-object v5, p0, Lid7;->g:Lbm3;

    iget-object v6, p0, Lid7;->h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    iget-object v7, p0, Lid7;->i:Lbm3;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
