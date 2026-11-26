.class public final synthetic Landroidx/compose/material3/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/DialogWrapper;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic e:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/g;->b:Landroidx/compose/material3/internal/DialogWrapper;

    iput-object p2, p0, Landroidx/compose/material3/internal/g;->c:Lll3;

    iput-object p3, p0, Landroidx/compose/material3/internal/g;->d:Landroidx/compose/ui/window/DialogProperties;

    iput-object p4, p0, Landroidx/compose/material3/internal/g;->e:Landroidx/compose/ui/unit/LayoutDirection;

    iput-boolean p5, p0, Landroidx/compose/material3/internal/g;->f:Z

    iput-boolean p6, p0, Landroidx/compose/material3/internal/g;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-boolean v4, p0, Landroidx/compose/material3/internal/g;->f:Z

    iget-boolean v5, p0, Landroidx/compose/material3/internal/g;->g:Z

    iget-object v0, p0, Landroidx/compose/material3/internal/g;->b:Landroidx/compose/material3/internal/DialogWrapper;

    iget-object v1, p0, Landroidx/compose/material3/internal/g;->c:Lll3;

    iget-object v2, p0, Landroidx/compose/material3/internal/g;->d:Landroidx/compose/ui/window/DialogProperties;

    iget-object v3, p0, Landroidx/compose/material3/internal/g;->e:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->d(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)Lj59;

    move-result-object p0

    return-object p0
.end method
