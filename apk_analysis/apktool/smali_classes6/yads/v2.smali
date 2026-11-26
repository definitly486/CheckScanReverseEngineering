.class public final Lyads/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/b00;

.field public final b:Lyads/zv3;

.field public final c:Lyads/dv;

.field public final d:Lyads/n50;

.field public final e:Lyads/q56;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 4

    new-instance v0, Lyads/b00;

    invoke-direct {v0}, Lyads/b00;-><init>()V

    new-instance v1, Lyads/zv3;

    invoke-direct {v1}, Lyads/zv3;-><init>()V

    new-instance v2, Lyads/dv;

    invoke-direct {v2, p1}, Lyads/dv;-><init>(Lyads/bf5;)V

    new-instance p1, Lyads/n50;

    invoke-direct {p1}, Lyads/n50;-><init>()V

    new-instance v3, Lyads/q56;

    invoke-direct {v3}, Lyads/q56;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/v2;->a:Lyads/b00;

    iput-object v1, p0, Lyads/v2;->b:Lyads/zv3;

    iput-object v2, p0, Lyads/v2;->c:Lyads/dv;

    iput-object p1, p0, Lyads/v2;->d:Lyads/n50;

    iput-object v3, p0, Lyads/v2;->e:Lyads/q56;

    return-void
.end method
