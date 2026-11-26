.class public final synthetic Lxa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lbm3;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa2;->b:Lbm3;

    iput-object p2, p0, Lxa2;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxa2;->c:Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lxa2;->b:Lbm3;

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/DateRangeInputKt;->a(Lbm3;Ljava/lang/Long;Ljava/lang/Long;)Lj59;

    move-result-object p0

    return-object p0
.end method
