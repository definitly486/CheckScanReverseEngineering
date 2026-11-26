.class public final Lwl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyl7;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lwl7;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lwl7;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lwl7;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lwl7;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ldm3;Ldm3;Lju0;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lwl7;->a:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lwl7;->b:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lwl7;->c:Ljava/lang/Object;

    .line 36
    iput-object p4, p0, Lwl7;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ldm3;
    .locals 0

    iget-object p0, p0, Lwl7;->d:Ljava/lang/Object;

    check-cast p0, Ldm3;

    return-object p0
.end method

.method public b()Ldm3;
    .locals 0

    iget-object p0, p0, Lwl7;->c:Ljava/lang/Object;

    check-cast p0, Ldm3;

    return-object p0
.end method

.method public c()Ldm3;
    .locals 0

    iget-object p0, p0, Lwl7;->b:Ljava/lang/Object;

    check-cast p0, Ldm3;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwl7;->a:Ljava/lang/Object;

    return-object p0
.end method
