.class public final synthetic Lvr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr4;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lvr4;->c:I

    iput-object p3, p0, Lvr4;->d:Landroidx/media3/common/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lvr4;->c:I

    iget-object v1, p0, Lvr4;->d:Landroidx/media3/common/util/ListenerSet$Event;

    iget-object p0, p0, Lvr4;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method
