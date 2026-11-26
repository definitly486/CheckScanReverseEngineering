.class public final Lbf7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lba8;


# instance fields
.field public final a:Lhg4;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkv6;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lze7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lba8;

    const-string v1, "_root_"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbf7;->e:Lba8;

    return-void
.end method

.method public constructor <init>(Lhg4;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbf7;->a:Lhg4;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lbf7;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lbf7;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lze7;

    const/4 v5, 0x0

    const/16 v7, 0x8

    sget-object v3, Lbf7;->e:Lba8;

    const-string v4, "_root_"

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lze7;-><init>(Lkv6;Ljava/lang/String;Lw39;Lhg4;I)V

    iput-object v2, p0, Lbf7;->d:Lze7;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
