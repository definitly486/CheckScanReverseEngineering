.class public final synthetic Landroidx/compose/material3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/material3/SheetState;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/material3/SheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/k;->b:Ly22;

    iput-object p2, p0, Landroidx/compose/material3/k;->c:Landroidx/compose/material3/SheetState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/k;->b:Ly22;

    iget-object p0, p0, Landroidx/compose/material3/k;->c:Landroidx/compose/material3/SheetState;

    invoke-static {v0, p0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->c(Ly22;Landroidx/compose/material3/SheetState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
