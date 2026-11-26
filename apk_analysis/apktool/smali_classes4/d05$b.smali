.class public abstract Ld05$b;
.super Lcj3;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcj3<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ld05$o;

.field public final c:Ld05$o;

.field public final d:Ln03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln03<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public transient f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld05$o;Ld05$o;Ln03;ILd05;)V
    .locals 0

    invoke-direct {p0}, Lmj3;-><init>()V

    iput-object p1, p0, Ld05$b;->b:Ld05$o;

    iput-object p2, p0, Ld05$b;->c:Ld05$o;

    iput-object p3, p0, Ld05$b;->d:Ln03;

    iput p4, p0, Ld05$b;->e:I

    iput-object p5, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public final delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public final delegate()Ljava/util/Map;
    .locals 0

    .line 3
    iget-object p0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method
