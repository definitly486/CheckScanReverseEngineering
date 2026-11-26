.class public final synthetic Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxo;->b:F

    iput p2, p0, Lxo;->c:F

    iput p3, p0, Lxo;->d:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxo;->c:F

    iget v1, p0, Lxo;->d:F

    iget p0, p0, Lxo;->b:F

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/AppBarKt;->m(FFF)Landroidx/compose/material3/BottomAppBarState;

    move-result-object p0

    return-object p0
.end method
