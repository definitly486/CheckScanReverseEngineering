.class public final synthetic Landroidx/compose/material3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:Ly22;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/material3/SheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/l;->b:Landroidx/compose/material3/SheetState;

    iput-object p1, p0, Landroidx/compose/material3/l;->c:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/l;->b:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Landroidx/compose/material3/l;->c:Ly22;

    invoke-static {p0, v0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->b(Ly22;Landroidx/compose/material3/SheetState;)Lj59;

    move-result-object p0

    return-object p0
.end method
