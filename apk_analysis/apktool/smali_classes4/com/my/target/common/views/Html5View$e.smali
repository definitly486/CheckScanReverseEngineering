.class public final Lcom/my/target/common/views/Html5View$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/common/views/Html5View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lpx3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw4a;->g:Landroid/os/Handler;

    iput-object v0, p0, Lcom/my/target/common/views/Html5View$e;->a:Landroid/os/Handler;

    new-instance v0, Lpx3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/my/target/common/views/Html5View$e;->b:Lpx3;

    return-void
.end method
