.class public final synthetic Landroidx/compose/material3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/w0;->b:Ljava/lang/Long;

    iput-object p3, p0, Landroidx/compose/material3/w0;->c:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/compose/material3/w0;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/material3/w0;->b:Ljava/lang/Long;

    iget-object v2, p0, Landroidx/compose/material3/w0;->c:Ljava/lang/Long;

    iget-object p0, p0, Landroidx/compose/material3/w0;->d:Lbm3;

    invoke-static {p1, v2, p0, v0, v1}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1;->d(Ljava/lang/Long;Ljava/lang/Long;Lbm3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
