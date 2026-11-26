.class public final Lyads/p14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/m14;


# instance fields
.field public final a:Lyads/hx3;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lyads/cs;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/hx3;

    invoke-direct {v0, p1, p2}, Lyads/hx3;-><init>(Lyads/cs;Z)V

    iput-object v0, p0, Lyads/p14;->a:Lyads/hx3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/p14;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p14;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/p14;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lyads/kx5;
    .locals 0

    iget-object p0, p0, Lyads/p14;->a:Lyads/hx3;

    iget-object p0, p0, Lyads/hx3;->o:Lyads/fx3;

    return-object p0
.end method
