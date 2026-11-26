.class public final synthetic Lta1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lnl3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta1;->b:Lnl3;

    iput-boolean p2, p0, Lta1;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lta1;->b:Lnl3;

    iget-boolean p0, p0, Lta1;->c:Z

    invoke-static {v0, p0}, Landroidx/compose/material3/CheckboxKt;->a(Lnl3;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
