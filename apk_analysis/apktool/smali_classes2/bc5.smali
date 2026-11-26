.class public final synthetic Lbc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lll3;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(JLll3;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbc5;->b:J

    iput-object p3, p0, Lbc5;->c:Lll3;

    iput-boolean p4, p0, Lbc5;->d:Z

    iput-boolean p5, p0, Lbc5;->e:Z

    iput p6, p0, Lbc5;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-wide v0, p0, Lbc5;->b:J

    iget-object v2, p0, Lbc5;->c:Lll3;

    iget-boolean v3, p0, Lbc5;->d:Z

    iget-boolean v4, p0, Lbc5;->e:Z

    iget v5, p0, Lbc5;->f:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ModalBottomSheetKt;->n(JLll3;ZZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
