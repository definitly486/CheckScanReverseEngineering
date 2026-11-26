.class public final Lyads/va4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c06;

.field public final b:Lyads/l06;

.field public final c:Lyads/k06;

.field public final d:Lyads/j26;

.field public e:I


# direct methods
.method public constructor <init>(Lyads/c06;Lyads/l06;Lyads/k06;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/va4;->a:Lyads/c06;

    iput-object p2, p0, Lyads/va4;->b:Lyads/l06;

    iput-object p3, p0, Lyads/va4;->c:Lyads/k06;

    iget-object p1, p1, Lyads/c06;->f:Lyads/vz2;

    iget-object p1, p1, Lyads/vz2;->m:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lyads/j26;

    invoke-direct {p1}, Lyads/j26;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lyads/va4;->d:Lyads/j26;

    return-void
.end method
