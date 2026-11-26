.class public final synthetic Lf48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/snapshots/ObserverHandle;


# instance fields
.field public final synthetic a:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf48;->a:Lbm3;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lf48;->a:Lbm3;

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a(Lbm3;)V

    return-void
.end method
