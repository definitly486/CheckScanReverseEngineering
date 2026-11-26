.class public final synthetic Lqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/audio/AudioBecomingNoisyManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lqt;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    invoke-static {p0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a(Landroidx/media3/common/audio/AudioBecomingNoisyManager;)V

    return-void
.end method
