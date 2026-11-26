.class public abstract Lyads/bv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lyads/bv3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;
    .locals 3

    sget-object v0, Lyads/bv3;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljx6;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Ljx6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljp9;

    invoke-direct {p0, v1}, Ljp9;-><init>(Ljx6;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zu3;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lyads/zu3;
    .locals 0

    .line 20
    new-instance p2, Lyads/av3;

    invoke-direct {p2, p0, p1}, Lyads/av3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final a(Lnl3;Ljava/lang/Object;)Lyads/zu3;
    .locals 0

    .line 21
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zu3;

    return-object p0
.end method
