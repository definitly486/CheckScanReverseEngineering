.class public final Lyads/tl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lyads/h14;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lyads/tl2;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/tl2;->b:Lyads/h14;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    iput p2, p0, Lyads/tl2;->a:I

    .line 20
    iput-object p3, p0, Lyads/tl2;->b:Lyads/h14;

    return-void
.end method
