.class public final synthetic Ldu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhp2;


# instance fields
.field public final synthetic b:Lgu3;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lgu3;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldu3;->b:Lgu3;

    iput-object p2, p0, Ldu3;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Ldu3;->c:Ljava/lang/Runnable;

    iget-object p0, p0, Ldu3;->b:Lgu3;

    iget-object p0, p0, Lgu3;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
