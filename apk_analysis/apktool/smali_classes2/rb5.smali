.class public final synthetic Lrb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/material3/SheetState;

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Ly22;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrb5;->b:Ly22;

    iput-object p1, p0, Lrb5;->c:Landroidx/compose/material3/SheetState;

    iput-object p3, p0, Lrb5;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lrb5;->b:Ly22;

    iget-object v1, p0, Lrb5;->c:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Lrb5;->d:Lll3;

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->h(Ly22;Landroidx/compose/material3/SheetState;Lll3;F)Lj59;

    move-result-object p0

    return-object p0
.end method
