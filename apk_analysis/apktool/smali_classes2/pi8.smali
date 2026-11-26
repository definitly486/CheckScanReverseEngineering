.class public final synthetic Lpi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lbm3;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(JJZLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lpi8;->b:J

    iput-wide p3, p0, Lpi8;->c:J

    iput-boolean p5, p0, Lpi8;->d:Z

    iput-object p6, p0, Lpi8;->e:Lbm3;

    iput p7, p0, Lpi8;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-wide v0, p0, Lpi8;->b:J

    iget-wide v2, p0, Lpi8;->c:J

    iget-boolean v4, p0, Lpi8;->d:Z

    iget-object v5, p0, Lpi8;->e:Lbm3;

    iget v6, p0, Lpi8;->f:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TabKt;->d(JJZLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
