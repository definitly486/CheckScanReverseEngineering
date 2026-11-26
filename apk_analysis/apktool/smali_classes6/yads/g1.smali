.class public final Lyads/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static volatile d:Lyads/g1;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Lyads/l13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lyads/l13;

    invoke-direct {v0}, Lyads/l13;-><init>()V

    iput-object v0, p0, Lyads/g1;->b:Lyads/l13;

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyads/g1;->b:Lyads/l13;

    invoke-virtual {v0, p1}, Lyads/l13;->a(Lyads/n8;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxp1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
