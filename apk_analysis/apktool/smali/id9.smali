.class public final synthetic Lid9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lyads/mr5;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lid9;->b:Ljava/lang/Object;

    iput-object p2, p0, Lid9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lid9;->b:Ljava/lang/Object;

    check-cast v0, Lyads/os2;

    iget-object p0, p0, Lid9;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ao2;

    invoke-static {v0, p0, p1}, Lyads/os2;->a(Lyads/os2;Lyads/ao2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lid9;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/VideoCapture;

    iget-object p0, p0, Lid9;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-static {v0, p0, p1}, Landroidx/camera/video/VideoCapture;->g(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
