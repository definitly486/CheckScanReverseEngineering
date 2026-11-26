.class public final Lvy8$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvy8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lvy8$b;

.field public final synthetic c:Lvy8$c;


# direct methods
.method public constructor <init>(Lvy8$c;Lvy8$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy8$c$a;->c:Lvy8$c;

    iput-object p2, p0, Lvy8$c$a;->b:Lvy8$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvy8$c$a;->b:Lvy8$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvy8$b;->e:Z

    iget-object v0, p0, Lvy8$c$a;->c:Lvy8$c;

    iget-object v0, v0, Lvy8$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object p0, p0, Lvy8$c$a;->b:Lvy8$b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
