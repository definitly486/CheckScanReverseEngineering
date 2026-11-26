.class public final synthetic Lwh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lnl3;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(IJZLnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lwh9;->b:J

    iput-object p5, p0, Lwh9;->c:Lnl3;

    iput-boolean p4, p0, Lwh9;->d:Z

    iput p1, p0, Lwh9;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-wide v0, p0, Lwh9;->b:J

    iget-object v2, p0, Lwh9;->c:Lnl3;

    iget-boolean v3, p0, Lwh9;->d:Z

    iget v4, p0, Lwh9;->e:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/WideNavigationRailKt;->m(JLnl3;ZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
