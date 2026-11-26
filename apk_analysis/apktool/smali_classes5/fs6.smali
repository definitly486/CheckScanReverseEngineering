.class public final Lfs6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhg4;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lhg4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs6;->a:Lhg4;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lfs6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
