.class public final Lyads/h24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/d9;

.field public final c:Lyads/cf6;

.field public final d:Lyads/hc0;

.field public final e:Lyads/yl4;

.field public final f:Lyads/kl4;

.field public final g:Lyads/dm4;


# direct methods
.method public constructor <init>(Lyads/bf5;Lyads/d9;)V
    .locals 3

    new-instance v0, Lyads/cf6;

    invoke-direct {v0}, Lyads/cf6;-><init>()V

    new-instance v1, Lyads/hc0;

    invoke-direct {v1}, Lyads/hc0;-><init>()V

    new-instance v2, Lyads/yl4;

    invoke-direct {v2}, Lyads/yl4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/h24;->a:Lyads/bf5;

    iput-object p2, p0, Lyads/h24;->b:Lyads/d9;

    iput-object v0, p0, Lyads/h24;->c:Lyads/cf6;

    iput-object v1, p0, Lyads/h24;->d:Lyads/hc0;

    iput-object v2, p0, Lyads/h24;->e:Lyads/yl4;

    new-instance p1, Lyads/kl4;

    invoke-direct {p1}, Lyads/kl4;-><init>()V

    iput-object p1, p0, Lyads/h24;->f:Lyads/kl4;

    new-instance p1, Lyads/dm4;

    invoke-direct {p1}, Lyads/dm4;-><init>()V

    iput-object p1, p0, Lyads/h24;->g:Lyads/dm4;

    return-void
.end method
