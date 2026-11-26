.class public final synthetic Lhu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/material3/SheetValue;

.field public final synthetic f:Lnl3;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(ZLll3;Lll3;Landroidx/compose/material3/SheetValue;Lnl3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhu7;->b:Z

    iput-object p2, p0, Lhu7;->c:Lll3;

    iput-object p3, p0, Lhu7;->d:Lll3;

    iput-object p4, p0, Lhu7;->e:Landroidx/compose/material3/SheetValue;

    iput-object p5, p0, Lhu7;->f:Lnl3;

    iput-boolean p6, p0, Lhu7;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lhu7;->f:Lnl3;

    iget-boolean v4, p0, Lhu7;->g:Z

    iget-boolean v0, p0, Lhu7;->b:Z

    iget-object v1, p0, Lhu7;->c:Lll3;

    iget-object v2, p0, Lhu7;->d:Lll3;

    iget-object v5, p0, Lhu7;->e:Landroidx/compose/material3/SheetValue;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SheetDefaultsKt;->c(ZLll3;Lll3;Lnl3;ZLandroidx/compose/material3/SheetValue;)Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method
