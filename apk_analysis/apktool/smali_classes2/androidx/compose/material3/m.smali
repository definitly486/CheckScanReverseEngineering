.class public final synthetic Landroidx/compose/material3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ly22;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/m;->b:Landroidx/compose/material3/SheetState;

    iput-boolean p2, p0, Landroidx/compose/material3/m;->c:Z

    iput-object p3, p0, Landroidx/compose/material3/m;->d:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/m;->e:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/m;->f:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/m;->g:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Landroidx/compose/material3/m;->g:Ly22;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v0, p0, Landroidx/compose/material3/m;->b:Landroidx/compose/material3/SheetState;

    iget-boolean v1, p0, Landroidx/compose/material3/m;->c:Z

    iget-object v2, p0, Landroidx/compose/material3/m;->d:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/material3/m;->e:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/material3/m;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->a(Landroidx/compose/material3/SheetState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly22;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
