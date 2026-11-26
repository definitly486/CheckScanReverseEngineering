.class public final synthetic Landroidx/compose/material3/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:Lll3;

.field public final synthetic d:Ly22;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Ly22;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/f2;->b:Landroidx/compose/material3/SheetState;

    iput-object p3, p0, Landroidx/compose/material3/f2;->c:Lll3;

    iput-object p2, p0, Landroidx/compose/material3/f2;->d:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/f2;->c:Lll3;

    iget-object v1, p0, Landroidx/compose/material3/f2;->d:Ly22;

    iget-object p0, p0, Landroidx/compose/material3/f2;->b:Landroidx/compose/material3/SheetState;

    invoke-static {p0, v1, v0}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7$2$1;->a(Landroidx/compose/material3/SheetState;Ly22;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
