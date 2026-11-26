.class public final Lyads/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pg4;

.field public final b:Lyads/m2;

.field public final c:Lyads/bj4;

.field public final d:Lyads/xd4;

.field public final e:Lyads/xk;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/m2;Lyads/bj4;)V
    .locals 4

    new-instance v0, Lyads/xd4;

    invoke-direct {v0}, Lyads/xd4;-><init>()V

    new-instance v1, Lyads/xk;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/z2;->a:Lyads/pg4;

    iput-object p2, p0, Lyads/z2;->b:Lyads/m2;

    iput-object p3, p0, Lyads/z2;->c:Lyads/bj4;

    iput-object v0, p0, Lyads/z2;->d:Lyads/xd4;

    iput-object v1, p0, Lyads/z2;->e:Lyads/xk;

    return-void
.end method
