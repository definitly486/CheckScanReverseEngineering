.class public final synthetic Lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwk;->b:I

    iput-object p2, p0, Lwk;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lwk;->b:I

    iget-object p0, p0, Lwk;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->a(ILjava/lang/Runnable;)V

    return-void
.end method
