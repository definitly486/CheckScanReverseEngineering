.class public final synthetic Landroidx/compose/material3/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:Ly22;

.field public final synthetic d:Landroidx/compose/material3/SheetState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/material3/SheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/i2;->b:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/i2;->c:Ly22;

    iput-object p3, p0, Landroidx/compose/material3/i2;->d:Landroidx/compose/material3/SheetState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/i2;->c:Ly22;

    iget-object v1, p0, Landroidx/compose/material3/i2;->d:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Landroidx/compose/material3/i2;->b:Landroidx/compose/material3/SheetState;

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7$2$1;->e(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/material3/SheetState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
