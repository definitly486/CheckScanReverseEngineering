.class public final synthetic Lju7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lll3;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ZLll3;Lll3;Lnl3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lju7;->b:Z

    iput-object p2, p0, Lju7;->c:Lll3;

    iput-object p3, p0, Lju7;->d:Lll3;

    iput-object p4, p0, Lju7;->e:Lnl3;

    iput-boolean p5, p0, Lju7;->f:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-boolean v4, p0, Lju7;->f:Z

    move-object v5, p1

    check-cast v5, Landroidx/compose/material3/SheetValue;

    iget-boolean v0, p0, Lju7;->b:Z

    iget-object v1, p0, Lju7;->c:Lll3;

    iget-object v2, p0, Lju7;->d:Lll3;

    iget-object v3, p0, Lju7;->e:Lnl3;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SheetState$Companion;->a(ZLll3;Lll3;Lnl3;ZLandroidx/compose/material3/SheetValue;)Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method
