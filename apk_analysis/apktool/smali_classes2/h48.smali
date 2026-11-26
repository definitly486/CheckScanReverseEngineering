.class public final synthetic Lh48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh48;->b:Lnl3;

    iput-object p2, p0, Lh48;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh48;->b:Lnl3;

    iget-object p0, p0, Lh48;->c:Lnl3;

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->b(Lnl3;Lnl3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
