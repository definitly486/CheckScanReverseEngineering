.class public final synthetic Landroidx/compose/material3/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/material3/SheetState;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lll3;

.field public final synthetic h:Ly22;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/SheetState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/g2;->b:Z

    iput-object p2, p0, Landroidx/compose/material3/g2;->c:Landroidx/compose/material3/SheetState;

    iput-object p3, p0, Landroidx/compose/material3/g2;->d:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/g2;->e:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/g2;->f:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/g2;->g:Lll3;

    iput-object p7, p0, Landroidx/compose/material3/g2;->h:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v6, p0, Landroidx/compose/material3/g2;->h:Ly22;

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-boolean v0, p0, Landroidx/compose/material3/g2;->b:Z

    iget-object v1, p0, Landroidx/compose/material3/g2;->c:Landroidx/compose/material3/SheetState;

    iget-object v2, p0, Landroidx/compose/material3/g2;->d:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/material3/g2;->e:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/material3/g2;->f:Ljava/lang/String;

    iget-object v5, p0, Landroidx/compose/material3/g2;->g:Lll3;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7$2$1;->d(ZLandroidx/compose/material3/SheetState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;Ly22;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
