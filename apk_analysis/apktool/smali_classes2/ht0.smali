.class public final synthetic Lht0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lll3;

.field public final synthetic g:Landroidx/compose/material3/SheetState;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Lbm3;Lbm3;Lll3;Landroidx/compose/material3/SheetState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht0;->b:Lbm3;

    iput-object p2, p0, Lht0;->c:Lbm3;

    iput-object p3, p0, Lht0;->d:Lbm3;

    iput-object p4, p0, Lht0;->e:Lbm3;

    iput-object p5, p0, Lht0;->f:Lll3;

    iput-object p6, p0, Lht0;->g:Landroidx/compose/material3/SheetState;

    iput p7, p0, Lht0;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lht0;->b:Lbm3;

    iget-object v1, p0, Lht0;->c:Lbm3;

    iget-object v2, p0, Lht0;->d:Lbm3;

    iget-object v3, p0, Lht0;->e:Lbm3;

    iget-object v4, p0, Lht0;->f:Lll3;

    iget-object v5, p0, Lht0;->g:Landroidx/compose/material3/SheetState;

    iget v6, p0, Lht0;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/BottomSheetScaffoldKt;->f(Lbm3;Lbm3;Lbm3;Lbm3;Lll3;Landroidx/compose/material3/SheetState;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
