.class public final Lyads/s7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/c7;

.field public final d:Lyads/u7;

.field public final e:Lyads/p7;

.field public final f:Lyads/ab;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/t5;)V
    .locals 4

    new-instance v0, Lyads/c7;

    invoke-direct {v0}, Lyads/c7;-><init>()V

    new-instance v1, Lyads/u7;

    invoke-direct {v1}, Lyads/u7;-><init>()V

    new-instance v2, Lyads/p7;

    invoke-direct {v2}, Lyads/p7;-><init>()V

    new-instance v3, Lyads/ab;

    invoke-direct {v3, p3}, Lyads/ab;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/s7;->a:Lyads/e4;

    iput-object p2, p0, Lyads/s7;->b:Lyads/bf5;

    iput-object v0, p0, Lyads/s7;->c:Lyads/c7;

    iput-object v1, p0, Lyads/s7;->d:Lyads/u7;

    iput-object v2, p0, Lyads/s7;->e:Lyads/p7;

    iput-object v3, p0, Lyads/s7;->f:Lyads/ab;

    return-void
.end method
