.class public final synthetic Lxm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lxm6;->b:J

    iput p3, p0, Lxm6;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lxm6;->c:I

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-wide v1, p0, Lxm6;->b:J

    invoke-static {v1, v2, v0, p1}, Landroidx/compose/material3/ProgressIndicatorKt;->e(JILandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
