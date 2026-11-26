.class public final synthetic Lpa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lnl3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa2;->b:Lnl3;

    iput-wide p2, p0, Lpa2;->c:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lpa2;->b:Lnl3;

    iget-wide v1, p0, Lpa2;->c:J

    invoke-static {v0, v1, v2}, Landroidx/compose/material3/DatePickerKt;->o(Lnl3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
