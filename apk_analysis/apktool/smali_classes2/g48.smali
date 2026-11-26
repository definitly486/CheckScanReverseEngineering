.class public final synthetic Lg48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/snapshots/ObserverHandle;


# instance fields
.field public final synthetic a:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg48;->a:Lnl3;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lg48;->a:Lnl3;

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Lnl3;)V

    return-void
.end method
