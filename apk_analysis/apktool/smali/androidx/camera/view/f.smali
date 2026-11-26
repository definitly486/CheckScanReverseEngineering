.class public final synthetic Landroidx/camera/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/view/PendingValue;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PendingValue;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/f;->b:Landroidx/camera/view/PendingValue;

    iput-object p2, p0, Landroidx/camera/view/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/f;->b:Landroidx/camera/view/PendingValue;

    iget-object p0, p0, Landroidx/camera/view/f;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Landroidx/camera/view/PendingValue;->a(Landroidx/camera/view/PendingValue;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
