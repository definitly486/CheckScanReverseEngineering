.class public final Lkd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/hookedonplay/decoviewlib/DecoView;


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/DecoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lkd2;->a:Landroid/os/Handler;

    iput-object p1, p0, Lkd2;->b:Lcom/hookedonplay/decoviewlib/DecoView;

    return-void
.end method
