.class public final Lyads/eg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qh6;

.field public final b:Lyads/zu;

.field public final c:Lyads/ip0;

.field public final d:Ljava/util/WeakHashMap;

.field public final e:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/qh6;

    invoke-direct {v0}, Lyads/qh6;-><init>()V

    new-instance v1, Lyads/zu;

    invoke-direct {v1}, Lyads/zu;-><init>()V

    new-instance v2, Lyads/ip0;

    invoke-direct {v2}, Lyads/ip0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/eg3;->a:Lyads/qh6;

    iput-object v1, p0, Lyads/eg3;->b:Lyads/zu;

    iput-object v2, p0, Lyads/eg3;->c:Lyads/ip0;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lyads/eg3;->d:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    return-void
.end method
