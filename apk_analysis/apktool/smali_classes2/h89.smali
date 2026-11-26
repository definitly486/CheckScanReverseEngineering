.class public final synthetic Lh89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh89;->b:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh89;->b:Lnl3;

    check-cast p2, Lj59;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/Updater;->b(Lnl3;Ljava/lang/Object;Lj59;)Lj59;

    move-result-object p0

    return-object p0
.end method
