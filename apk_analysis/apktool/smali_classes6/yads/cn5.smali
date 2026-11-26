.class public final Lyads/cn5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ni4;

.field public final b:Lyads/q84;

.field public final c:Lyads/nn0;

.field public final d:Lyads/md1;

.field public final e:Lyads/ss2;

.field public final f:Lyads/xk;


# direct methods
.method public constructor <init>(Lyads/ni4;Lyads/q84;Lyads/nn0;)V
    .locals 5

    new-instance v0, Lyads/md1;

    invoke-direct {v0}, Lyads/md1;-><init>()V

    new-instance v1, Lyads/ss2;

    invoke-direct {v1}, Lyads/ss2;-><init>()V

    new-instance v2, Lyads/xk;

    sget-object v3, Lyads/tn1;->c:Lyads/tn1;

    invoke-static {p1, v3}, Lyads/qg4;->a(Lyads/pg4;Lyads/tn1;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cn5;->a:Lyads/ni4;

    iput-object p2, p0, Lyads/cn5;->b:Lyads/q84;

    iput-object p3, p0, Lyads/cn5;->c:Lyads/nn0;

    iput-object v0, p0, Lyads/cn5;->d:Lyads/md1;

    iput-object v1, p0, Lyads/cn5;->e:Lyads/ss2;

    iput-object v2, p0, Lyads/cn5;->f:Lyads/xk;

    return-void
.end method
