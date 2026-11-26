.class public final synthetic Lac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lbm3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(FFLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lac;->b:F

    iput p2, p0, Lac;->c:F

    iput-object p3, p0, Lac;->d:Lbm3;

    iput p4, p0, Lac;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v0, p0, Lac;->b:F

    iget v1, p0, Lac;->c:F

    iget-object v2, p0, Lac;->d:Lbm3;

    iget v3, p0, Lac;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt;->f(FFLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
