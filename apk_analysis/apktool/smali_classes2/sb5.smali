.class public final synthetic Lsb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:Ly22;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsb5;->b:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Lsb5;->c:Ly22;

    iput-object p3, p0, Lsb5;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lsb5;->e:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsb5;->d:Landroidx/compose/animation/core/Animatable;

    iget-object v1, p0, Lsb5;->e:Lll3;

    iget-object v2, p0, Lsb5;->b:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Lsb5;->c:Ly22;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/ModalBottomSheetKt;->b(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
